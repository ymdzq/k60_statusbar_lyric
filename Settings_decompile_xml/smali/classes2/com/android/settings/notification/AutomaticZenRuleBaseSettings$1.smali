.class Lcom/android/settings/notification/AutomaticZenRuleBaseSettings$1;
.super Ljava/lang/Object;
.source "AutomaticZenRuleBaseSettings.java"

# interfaces
.implements Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings$1;->this$0:Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lmiuix/pickerwidget/widget/TimePicker;II)V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings$1;->this$0:Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;

    iget-boolean p1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mTimeFlag:Z

    if-nez p1, :cond_0

    mul-int/lit8 p1, p2, 0x3c

    add-int/2addr p1, p3

    .line 74
    iput p1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mStartTime:I

    .line 75
    iget-object p1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mTimeTurnOnPref:Lcom/android/settings/soundsettings/LabelPreferenceWithBg;

    invoke-static {p0, p2, p3}, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->-$$Nest$mformatChooseTime(Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/soundsettings/LabelPreferenceWithBg;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p2, 0x3c

    add-int/2addr p1, p3

    .line 77
    iput p1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mEndTime:I

    .line 78
    iget-object p1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mTimeTurnOffPref:Lcom/android/settings/soundsettings/LabelPreferenceWithBg;

    invoke-static {p0, p2, p3}, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->-$$Nest$mformatChooseTime(Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/soundsettings/LabelPreferenceWithBg;->setLabel(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
