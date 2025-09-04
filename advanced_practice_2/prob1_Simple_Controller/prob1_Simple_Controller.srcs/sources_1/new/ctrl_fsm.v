module ctrl_fsm(
    input   wire            clk_i,
    input   wire            rstn_i,
    input   wire            start_i,
    output  wire    [2:0]   w_addr_o,
    output  wire            w_en_o,
    output  wire    [2:0]   x_addr_o,
    output  wire            x_en_o,
    output  wire            mac_en_o,
    output  wire            mac_clear_o,
    output  wire            done_o
    );
localparam  IDLE = 2'b00,
            RUN = 2'b01,
            DONE = 2'b10;
reg            done;
reg    [2:0]   w_addr;
reg            w_en;
reg    [2:0]   x_addr;
reg            x_en;
reg            mac_en;
reg            mac_clear;
reg    [1:0]   state;
reg    [1:0]   next_state;
reg    [3:0]   cnt_mac;
always @(posedge clk_i) begin
    if (!rstn_i) begin
        state <= IDLE;
    end
    else begin
        state <= next_state;
    end
end
always @(posedge clk_i) begin
    if (!rstn_i) begin
        cnt_mac <= 0;
    end
    else begin
        if (w_en_o && x_en_o) begin
            cnt_mac <= cnt_mac + 1;
        end
    end
end
always @(*) begin
    if (!rstn_i) begin
        next_state = IDLE;
    end
    else begin
        case (state)
            IDLE: begin
                if (start_i) begin
                    next_state = RUN;
                end
            end
            RUN: begin
                if (cnt_mac == 8) begin
                    next_state = DONE;
                end
            end
            default: begin
                next_state = IDLE;
            end
        endcase
    end
end
always @(posedge clk_i) begin
    if (!rstn_i) begin
        done <= 0;
        w_addr <= 0;
        w_en <= 0;
        x_addr <= 0;
        x_en <= 0;
        mac_en <= 0;
        mac_clear<= 1;
    end
    else begin
        case (state)
            IDLE: begin
                done <= 0;
                w_addr <= 0;
                w_en <= 0;
                x_addr <= 0;
                x_en <= 0;
                mac_en <= 0;
                mac_clear<= 0;
            end
            RUN: begin
                if (cnt_mac == 8) begin
                    done <= 1;
                    w_addr <= 0;
                    w_en <= 0;
                    x_addr <= 0;
                    x_en <= 0;
                    mac_en <= 0;
                    mac_clear<= 1;
                end
                else begin
                    mac_clear<= 0;
                    if (w_en_o && x_en_o) begin
                        mac_en <= 1;
                        if (cnt_mac == 7) begin
                            w_addr <= w_addr;
                            w_en <= 0;
                            x_addr <= x_addr;
                            x_en <= 0;
                        end
                        else begin
                            w_addr <= w_addr + 1;
                            w_en <= 1;
                            x_addr <= x_addr + 1;
                            x_en <= 1;
                        end
                    end
                    else begin
                        w_addr <= w_addr;
                        w_en <= 1;
                        x_addr <= x_addr;
                        x_en <= 1;
                    end
                end
            end
            DONE: begin
                done <= 0;
                w_addr <= 0;
                w_en <= 0;
                x_addr <= 0;
                x_en <= 0;
                mac_en <= 0;
                mac_clear<= 0;
            end
        endcase
    end
end
assign w_addr_o = w_addr;
assign w_en_o = w_en;
assign x_addr_o = x_addr;
assign x_en_o = x_en;
assign mac_en_o = mac_en;
assign mac_clear_o = mac_clear;
assign done_o = done;
endmodule
