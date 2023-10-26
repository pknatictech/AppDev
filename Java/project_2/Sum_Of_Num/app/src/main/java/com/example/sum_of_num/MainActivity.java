package com.example.sum_of_num;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    EditText n1,n2,sum;
    TextView text1,no1,no2,no_sum,textView;
    Button submit;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        n1 = findViewById(R.id.n1);
        n2 = findViewById(R.id.n2);
        submit = findViewById(R.id.submit);
        textView = findViewById(R.id.textView);
        submit.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v) {
                float s = Float.parseFloat(n1.getText().toString()) + Float.parseFloat(n1.getText().toString());
                textView.setText(" " + s);
            }
        });

    }
}