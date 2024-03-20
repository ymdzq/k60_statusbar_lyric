.class Lcom/android/settings/notification/SilentModeRuleBaseSettings$1;
.super Ljava/lang/Object;
.source "SilentModeRuleBaseSettings.java"

# interfaces
.implements Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SilentModeRuleBaseSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/SilentModeRuleBaseSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/SilentModeRuleBaseSettings;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings$1;->this$0:Lcom/android/settings/notification/SilentModeRuleBaseSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lmiuix/pickerwidget/widget/TimePicker;II)V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings$1;->this$0:Lcom/android/settings/notification/SilentModeRuleBaseSettings;

    iget-boolean p1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mTimeFlag:Z

    if-nez p1, :cond_0

    mul-int/lit8 p2, p2, 0x3c

    add-int/2addr p2, p3

    .line 73
    iput p2, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mStartTime:I

    .line 74
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mStartTimePS:Lcom/android/settings/dndmode/LabelPreference;

    invoke-static {p0, p2}, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->-$$Nest$mtimeTostring(Lcom/android/settings/notification/SilentModeRuleBaseSettings;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    mul-int/lit8 p2, p2, 0x3c

    add-int/2addr p2, p3

    .line 76
    iput p2, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mEndTime:I

    .line 77
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mEndTimePS:Lcom/android/settings/dndmode/LabelPreference;

    invoke-static {p0, p2}, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->-$$Nest$mtimeTostring(Lcom/android/settings/notification/SilentModeRuleBaseSettings;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
