package com.healthmudi.dia.flutternative;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;

import io.flutter.facade.Flutter;

public class MainActivity extends AppCompatActivity {
    private Button btnLoadFlutterModule;
    private FrameLayout flContainer;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        btnLoadFlutterModule = (Button) findViewById(R.id.btn_load_flutter_module);
        flContainer = (FrameLayout) findViewById(R.id.fl_container);
        btnLoadFlutterModule.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                getSupportFragmentManager()
                        .beginTransaction()
                        .replace(R.id.fl_container, Flutter.createFragment("dd"))
                        .commit();
            }
        });

    }
}
