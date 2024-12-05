all: analyze synth verilog

analyze:
	ghdl -a masked_aes_pkg.vhdl
	ghdl -a aes_ctrl_lsfr_23_cycles.vhdl
	ghdl -a rcon.vhdl
	ghdl -a lin_map.vhdl
	ghdl -a square_scaler.vhdl
	ghdl -a gf2_mul.vhdl
	ghdl -a shared_mul_gf4.vhdl
	ghdl -a shared_mul_gf2.vhdl
	ghdl -a real_dom_shared_mul_gf2.vhdl
	ghdl -a inverter.vhdl
	ghdl -a real_dom_shared_mul_gf4.vhdl
	ghdl -a aes_sbox.vhdl
	ghdl -a aes_key_regs.vhdl
	ghdl -a mix_columns.vhdl
	ghdl -a aes_state_regs.vhdl
	ghdl -a aes_ctrl_lsfr.vhdl
	ghdl -a aes_top.vhdl


synth: analyze
	yosys -m ghdl -p 'ghdl aes_top; synth_ice40 -json aes_top.json'

verilog:
	mkdir -p Verilog
	yosys -m ghdl -p 'ghdl masked_aes_pkg.vhdl aes_ctrl_lsfr_23_cycles.vhdl rcon.vhdl lin_map.vhdl square_scaler.vhdl gf2_mul.vhdl shared_mul_gf4.vhdl shared_mul_gf2.vhdl real_dom_shared_mul_gf2.vhdl inverter.vhdl real_dom_shared_mul_gf4.vhdl aes_sbox.vhdl aes_key_regs.vhdl mix_columns.vhdl aes_state_regs.vhdl aes_ctrl_lsfr.vhdl aes_top.vhdl -e aes_top; write_verilog Verilog/aes-dom.v'



clean:
	$(RM) *.cf 
	$(RM) *.json
	$(RM) -r Verilog
