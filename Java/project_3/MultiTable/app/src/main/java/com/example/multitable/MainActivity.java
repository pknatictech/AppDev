package com.example.multitable;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    TextView Main,h1,answer;
    Button button;
    EditText TextNumber;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Main = findViewById(R.id.Main);
        h1 = findViewById(R.id.h1);
        button = findViewById(R.id.button);
        Main.setText("Table Of Given Number!");
        h1.setText("Enter the Number Here = ");
        answer = findViewById(R.id.answer);
        TextNumber = findViewById(R.id.editTextNumber);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
            int a = Integer.parseInt(TextNumber.getText().toString());
            answer.setText(a + " x " + " 01 " + " = " + a*1 + "\n" +
                    a + " x " + " 02 " + " = " + a*2 + "\n" +
                    a + " x " + " 03 " + " = " + a*3 + "\n" +
                    a + " x " + " 04 " + " = " + a*4 + "\n" +
                    a + " x " + " 05 " + " = " + a*5 + "\n" +
                    a + " x " + " 06 " + " = " + a*6 + "\n" +
                    a + " x " + " 07 " + " = " + a*7 + "\n" +
                    a + " x " + " 08 " + " = " + a*8 + "\n" +
                    a + " x " + " 08 " + " = " + a*8 + "\n" +
                    a + " x " + " 10 " + " = " + a*10 + "\n"
            );

            }
        });

    }
}