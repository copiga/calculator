int main(string[] args)
{
	Gtk.init(ref args);
	calculator_window window = new calculator_window();
	window.show_all();
	Gtk.main();
	return 0;
}
