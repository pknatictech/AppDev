package com.example.uconvert;
import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
public class MainActivity extends AppCompatActivity {
    private Button button;
    private TextView textView;
    private TextView editTextText;
    private TextView textView2;

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        button = findViewById(R.id.button);
        textView = findViewById(R.id.textView);
        textView2 = findViewById(R.id.textView2);
        editTextText = findViewById(R.id.editTextText);

        //By Adding event Listener

//        button.setOnClickListener(new View.OnClickListener() {
//            @Override
//            public void onClick(View view) {
//                Toast.makeText(MainActivity.this, "❤️Converted Successfully❤️", Toast.LENGTH_SHORT).show();
//                String s = editTextText.getText().toString();
//                double km = Double.parseDouble(s);
//                double meter = km * 1000 ;
//                double cm = km * 100000;
//                double inch = km * 39370.1;
//                double feet = km * 3280.84;
//                textView.setText("Meter = " + meter + "\nCentimeters = " + cm  + "\nInches = " + inch + "\nFeet = " + feet);
//
//            }
//        });
    }
    //By onClick Attribute
    public void calculation(View view)
    {
        Toast.makeText(MainActivity.this, "❤️Converted Successfully❤️", Toast.LENGTH_SHORT).show();
                String s = editTextText.getText().toString();
                double km = Double.parseDouble(s);
                double meter = km * 1000 ;
                double cm = km * 100000;
                double inch = km * 39370.1;
                double feet = km * 3280.84;
                textView.setText("Meter = " + meter + "\nCentimeters = " + cm  + "\nInches = " + inch + "\nFeet = " + feet);
    }
}