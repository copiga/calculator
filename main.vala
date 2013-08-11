int main(string[] args)
{
	Gtk.init(ref args);
	calculator_window calculator = new calculator_window();
	calculator.show_all();
	Gtk.main();
	return 0;
}
