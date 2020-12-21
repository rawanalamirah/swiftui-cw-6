
<div dir="rtl">

#  تمرين - 4
## BMI Calculator
### خطوات 
1. قم بعمل Fork لهذا المجلد و clone وافتح المجلد من خلال Github Desktop 
2. قم بإنشاء مشروعاً جديداً واحفطه في هذا المجلد.
3. أضف 2xTextField واحد ل weight و واحد ل height
4. قم بإضافة زر، بحيث إذا تم الضغط على الزر يتم حساب الـ bmi 


معادلة ال bmi 

<div dir="ltr">
  
``` 
bmi = weight / (height * height) 
```

</div>


5. استعمل الدوال functions لحساب ال bmi وحالة الجسد (متين / طبيعي / نحيف ) 

<img src="https://user-images.githubusercontent.com/8784343/102730718-b0ec9b00-4346-11eb-9ee0-fbea7673766a.gif" alt="bmi calcaultor gif" />


<details>
  <summary>
    <strong>بونص 🎁</strong>
  </summary>
  <pre>
- قم بعرض صور لكل حالة بشكل مختلف 
- إذا أدخل المستخدم رقماً خاطئ - أقل من الصفر أو أعلى من رقم غير معقول، لون الـ TextField باللون الأحمر
- في حال الضغط على الزر وهناك مدخلات خاطئة قم بوضع نص أحمر أسفل الحقول واعرض فيه رسالة الخطأ
</pre>
</details>





<details>
  <summary>
    <strong>هنتات 👀</strong>
  </summary>

<div dir="ltr>
<pre>
  <code>
func bmiStatus() -> String{
    guard let bmi = bmi else {return ""}
    switch bmi {
    case ..<20: return "thin"
    case 20..<25: return "normal"
    case 25...: return "fat"
    default: return ""
    }
}
  </code>
</pre>
</div>

</details>



</div>
