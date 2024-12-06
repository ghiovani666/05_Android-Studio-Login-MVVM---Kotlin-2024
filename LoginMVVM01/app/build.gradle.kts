plugins {
    alias(libs.plugins.android.application)
    alias(libs.plugins.kotlin.android)
}

android {
    namespace = "com.example.loginmvvm01"
    compileSdk = 35

    defaultConfig {
        applicationId = "com.example.loginmvvm01"
        minSdk = 29
        targetSdk = 35
        versionCode = 1
        versionName = "1.0"

        testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"
    }

    buildTypes {
        release {
            isMinifyEnabled = false
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
        }
    }
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_1_8
        targetCompatibility = JavaVersion.VERSION_1_8
    }
    kotlinOptions {
        jvmTarget = "1.8"
    }
    buildFeatures {
        viewBinding = true
    }
}

dependencies {

    implementation(libs.androidx.core.ktx)
    implementation(libs.androidx.appcompat)
    implementation(libs.material)
    implementation(libs.androidx.activity)
    implementation(libs.androidx.constraintlayout)

    //Preference
    implementation("androidx.preference:preference-ktx:1.2.0")
    
    //RetroFit Dependencies
    implementation("com.google.code.gson:gson:2.8.9")
    implementation("com.squareup.retrofit2:retrofit:2.9.0")
    implementation("com.squareup.retrofit2:converter-gson:2.9.0")
    implementation("com.squareup.okhttp3:logging-interceptor:5.0.0-alpha.1")

    //Coroutains"
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-android:1.5.2-native-mt")
    implementation("androidx.lifecycle:lifecycle-viewmodel-ktx:2.4.1") //viewModel scope
    implementation("androidx.lifecycle:lifecycle-runtime-ktx:2.4.1") //lifecycle scope
    implementation("androidx.fragment:fragment-ktx:1.4.1")

    //Lifecycle
    implementation("androidx.lifecycle:lifecycle-common:2.4.1")
    implementation("androidx.lifecycle:lifecycle-runtime-ktx:2.4.1")
    implementation("androidx.lifecycle:lifecycle-livedata-ktx:2.4.1")
    //size dp/sp
    implementation("com.intuit.sdp:sdp-android:1.0.6")
    implementation("com.intuit.ssp:ssp-android:1.0.6")
    
    testImplementation(libs.junit)
    androidTestImplementation(libs.androidx.junit)
    androidTestImplementation(libs.androidx.espresso.core)
}