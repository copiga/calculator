using Gtk;

class calculator_window : Window
{
	private Grid grid;
	private Button zero;
	private Button one;
	private Button two;
	private Button three;
	private Button four;
	private Button five;
	private Button six;
	private Button seven;
	private Button eight;
	private Button nine;
	private Button plus;
	private Button subtract;
	private Button times;
	private Button divide;
	private Button equals;
	private Entry display;

	private int64 first_number;
	private int64 second_number;
	private int64 result;
	private char operation;

	public calculator_window()
	{
		title = "calculator";
		this.destroy.connect(Gtk.main_quit);
		this.set_up_grid();
		this.set_up_buttons();
		this.set_up_display();
		this.connect_signals();
		this.show_all();
	}
	
	private void set_up_grid()
	{
		grid = new Grid();
		grid.set_column_homogeneous(true);
		grid.set_row_homogeneous(true);
		this.add(grid);
	}
	
	private void set_up_buttons()
	{
		zero	= new Button.with_label("0");
		one	= new Button.with_label("1");
		two	= new Button.with_label("2");
		three	= new Button.with_label("3");
		four	= new Button.with_label("4");
		five	= new Button.with_label("5");
		six	= new Button.with_label("6");
		seven	= new Button.with_label("7");
		eight	= new Button.with_label("8");
		nine	= new Button.with_label("9");
		plus	= new Button.with_label("+");
		subtract= new Button.with_label("-");
		times	= new Button.with_label("*");
		divide	= new Button.with_label("/");
		equals	= new Button.with_label("=");

		

		grid.attach(	zero	, 20, 40, 10,10);
		grid.attach(	one	, 10, 10, 10,10);
		grid.attach(	two	, 20, 10, 10,10);
		grid.attach(	three	, 30, 10, 10,10);
		grid.attach(	four	, 10, 20, 10,10);
		grid.attach(	five	, 20, 20, 10,10);
		grid.attach(	six	, 30, 20, 10,10);
		grid.attach(	seven	, 10, 30, 10,10);
		grid.attach(	eight	, 20, 30, 10,10);
		grid.attach(	nine	, 30, 30, 10,10);
		grid.attach(	plus	, 10, 40, 10,10);
		grid.attach(	subtract, 30, 40, 10,10);
		grid.attach(	times	, 10, 50, 10,10);
		grid.attach(	divide	, 30, 50, 10,10);
		grid.attach(	equals	, 20, 50, 10,10);
	}

	private void set_up_display()
	{
		display = new Entry();
		grid.attach(display,10,0,30,10);
	}

	private void connect_signals()
	{
		zero.clicked.connect(()=>
		{
			display.text+="0";
		}
		);

		one.clicked.connect(()=>
		{
			display.text+="1";
		}
		);

		two.clicked.connect(()=>
		{
			display.text+="2";
		}
		);

		three.clicked.connect(()=>
		{
			display.text+="3";
		}
		);

		four.clicked.connect(()=>
		{
			display.text+="4";
		}
		);

		five.clicked.connect(()=>
		{
			display.text+="5";
		}
		);

		six.clicked.connect(()=>
		{
			display.text+="6";
		}
		);

		seven.clicked.connect(()=>
		{
			display.text+="7";
		}
		);

		eight.clicked.connect(()=>
		{
			display.text+="8";
		}
		);

		nine.clicked.connect(()=>
		{
			display.text+="9";
		}
		);

		plus.clicked.connect(()=>
		{
			operation = '+';
			this.first_number = display.text.to_int();
			display.text = "";
		}
		);

		subtract.clicked.connect(()=>
		{
			operation = '-';
			this.first_number = display.text.to_int();
			display.text = "";
		}
		);

		times.clicked.connect(()=>
		{
			operation = '*';
			this.first_number = display.text.to_int();
			display.text = "";
		}
		);

		divide.clicked.connect(()=>
		{
			operation = '/';
			this.first_number = display.text.to_int();
			display.text = "";
		}
		);

		equals.clicked.connect(()=>
		{
			this.second_number = display.text.to_int();
			switch(operation)
			{
				case '+':
				     this.result = first_number + second_number;
				     display.text = this.result.to_string();
				     break;
				case '-':
				     this.result = first_number - second_number;
				     display.text = this.result.to_string();
				     break;
				case '*':
				     this.result = first_number * second_number;
				     display.text = this.result.to_string();
				     break;
				case '/':
				     this.result = first_number / second_number;
				     display.text = this.result.to_string();
				     break;
			}
		}
		);

	}
}
