extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var num_str = '';
var num_order = 1;
var num_oper = null;
var a = null;
var b = null;
var op = null;


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func print_result():
	var eq = '';
	if (a != null): eq += String(a) + ' ';
	if (op != null): eq += op + ' ';
	if (b != null): eq += String(b) + ' ';
	print(eq);

func calculate():
	pass;


func _on_Button_pressed(btn_val):
	if ('.' in btn_val and '.' in num_str): return;
	num_str += btn_val;
	if (num_order == 1):
		a = float(num_str)
	else:
		b = float(num_str)
		
	# save button that was clicked
	print(a);
	print(b);
	pass # Replace with function body.


func _on_Button_Clear_pressed():
	# clear the inputs and cache
	pass # Replace with function body.


func _on_Button_Oper_pressed(oper):
	num_oper = oper;
	num_str = '';
	if (oper != '='):
		num_order = 2;
		op = oper;
		print_result();
		pass
	else:
		num_order = 1;
		calculate();
	pass # Replace with function body.
