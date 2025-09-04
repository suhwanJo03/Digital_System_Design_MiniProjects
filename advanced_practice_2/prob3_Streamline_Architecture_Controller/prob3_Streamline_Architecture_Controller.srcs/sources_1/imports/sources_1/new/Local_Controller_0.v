module Local_Controller_0(
    input wire clk_i,
    input wire rstn_i,
    input wire start_i,
    input wire local_en_0,
    //input wire clear_local_0,

    output wire p_done_0_o,//pu0?��?��?�� ?��?��?�� ???��밍을 pu1?�� ?��?��주는 ?��?��
    output wire pu_0_en_o,
    output wire pu_0_clear_o,
    output wire pu_0_valid_o,
    output wire din1_en_o,
    output wire din2_en_o,
    output wire done_0_o,
    output reg [1:0] din1_addr,
    output reg [4:0] din2_addr
    );

reg [1:0] state_0;
reg [1:0] next_state_0;
reg [4:0] din2_addr_FLAG;
reg [3:0] cnt_mac_0;
reg [2:0] cnt_mul_0;

reg p_done_0;
reg pu_0_en;
reg pu_0_clear;
reg pu_0_valid;
reg din1_en;
reg din2_en;
reg done_0;

localparam IDLE = 3'd0,
           MUL  = 3'd1,
           DONE_0 = 3'd2;
always @(posedge clk_i) begin
    if (!rstn_i) begin
        state_0 <= IDLE;
        next_state_0 <= IDLE;
    end
    else begin
        case (state_0)
            IDLE: begin
                if (start_i) begin
                    next_state_0 <= MUL;
                end
                else state_0 <= next_state_0;
            end
            MUL: begin
                if (cnt_mac_0 == 7 && p_done_0) begin
                    next_state_0 <= DONE_0;
                end
                else state_0 <= next_state_0;
            end
            DONE_0: begin
                //if (clear_local_0) begin
                //    next_state_0 <= IDLE;
                //end
                //else state_0 <= next_state_0;
                if (done_0) next_state_0 <= IDLE;
                state_0 <= next_state_0;
            end
        endcase
    end
end
always @(posedge clk_i) begin
    if (!rstn_i) begin
        din1_en <= 0;
        din2_en <= 0;
        pu_0_en <= 0;
        pu_0_clear <= 0;
        done_0 <= 0;
        din1_addr <= 0;
        din2_addr <= 0;
        din2_addr_FLAG <= 0;
        cnt_mac_0 <= 0;
        cnt_mul_0 <= 0;
        p_done_0 <= 0;
        pu_0_valid <= 0;
    end
    else begin
        if (local_en_0) begin
            case (state_0)
                MUL: begin
                    if (cnt_mac_0 == 8) begin
                        cnt_mac_0 <= 0;
                        done_0 <= 1;
                        pu_0_en <= 0;
                        pu_0_clear <= 0;
                        din1_en <= 0;
                        din2_en <= 0;
                    end
                    else begin
                        din1_en <= 1;
                        din2_en <= 1;
                        if (p_done_0) begin
                            cnt_mac_0 <= cnt_mac_0 + 1;
                        end
                        if (din1_en) begin
                            if (p_done_0) begin
                                din1_addr <= 0;
                                pu_0_en <= 0;
                                pu_0_clear <= 1;
                            end
                            else begin
                                din1_addr <= din1_addr + 1;
                                pu_0_en <= 1;
                                pu_0_clear <= 0;
                            end
                        end
                        if (din2_en) begin
                            if (din1_addr == 0) begin
                                din2_addr_FLAG <= din2_addr;
                            end
                            if (p_done_0) begin
                                din2_addr <= din2_addr_FLAG;
                            end
                            else din2_addr <= din2_addr + 1;
                        end
                        if (din1_en && din2_en) begin
                            if (cnt_mul_0 == 5) begin
                                cnt_mul_0 <= 0;
                            end
                            else cnt_mul_0 <= cnt_mul_0 + 1;
                            if (cnt_mul_0 == 4) p_done_0 <= 1;
                            else p_done_0 <= 0;
                            if (cnt_mul_0 == 3) pu_0_valid <= 1;
                            else pu_0_valid <= 0;
                        end
                    end
                end
                //DONE_0: begin
                //    if (clear_local_0) begin
                //        din1_en <= 0;
                //        din2_en <= 0;
                //        pu_0_en <= 0;
                //        pu_0_clear <= 0;
                //        done_0 <= 0;
                //        din1_addr <= 0;
                //        din2_addr <= 0;
                //        din2_addr_FLAG <= 0;
                //        cnt_mac_0 <= 0;
                //        cnt_mul_0 <= 0;
                //    end
                //end
            endcase
        end
    end
end

assign pu_0_en_o = pu_0_en;
assign pu_0_clear_o = pu_0_clear;
assign p_done_0_o = p_done_0;
assign pu_0_valid_o = pu_0_valid;
assign din1_en_o = din1_en;
assign din2_en_o = din2_en;
assign done_0_o = done_0;

endmodule