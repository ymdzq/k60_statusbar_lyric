.class Lcom/android/settings/dndmode/AutoTimeSettingsFragment$1;
.super Ljava/lang/Object;
.source "AutoTimeSettingsFragment.java"

# interfaces
.implements Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dndmode/AutoTimeSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dndmode/AutoTimeSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment$1;->this$0:Lcom/android/settings/dndmode/AutoTimeSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lmiuix/pickerwidget/widget/TimePicker;II)V
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment$1;->this$0:Lcom/android/settings/dndmode/AutoTimeSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->-$$Nest$fgetmTimeFlag(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment$1;->this$0:Lcom/android/settings/dndmode/AutoTimeSettingsFragment;

    mul-int/lit8 p2, p2, 0x3c

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->-$$Nest$fputmStartTime(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;I)V

    .line 63
    iget-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment$1;->this$0:Lcom/android/settings/dndmode/AutoTimeSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;)Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment$1;->this$0:Lcom/android/settings/dndmode/AutoTimeSettingsFragment;

    invoke-static {p2}, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->-$$Nest$fgetmStartTime(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;)I

    move-result p2

    invoke-static {p1, p2}, Landroid/provider/MiuiSettings$AntiSpam;->setStartTimeForQuietMode(Landroid/content/Context;I)V

    .line 64
    iget-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment$1;->this$0:Lcom/android/settings/dndmode/AutoTimeSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->-$$Nest$fgetmStartTimePS(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;)Lcom/android/settings/dndmode/LabelPreference;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment$1;->this$0:Lcom/android/settings/dndmode/AutoTimeSettingsFragment;

    invoke-static {p2}, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->-$$Nest$fgetmStartTime(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;)I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->-$$Nest$mtimeToString(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment$1;->this$0:Lcom/android/settings/dndmode/AutoTimeSettingsFragment;

    mul-int/lit8 p2, p2, 0x3c

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->-$$Nest$fputmEndTime(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;I)V

    .line 67
    iget-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment$1;->this$0:Lcom/android/settings/dndmode/AutoTimeSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;)Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment$1;->this$0:Lcom/android/settings/dndmode/AutoTimeSettingsFragment;

    invoke-static {p2}, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->-$$Nest$fgetmEndTime(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;)I

    move-result p2

    invoke-static {p1, p2}, Landroid/provider/MiuiSettings$AntiSpam;->setEndTimeForQuietMode(Landroid/content/Context;I)V

    .line 68
    iget-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment$1;->this$0:Lcom/android/settings/dndmode/AutoTimeSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->-$$Nest$fgetmEndTimePS(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;)Lcom/android/settings/dndmode/LabelPreference;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment$1;->this$0:Lcom/android/settings/dndmode/AutoTimeSettingsFragment;

    invoke-static {p2}, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->-$$Nest$fgetmEndTime(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;)I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->-$$Nest$mtimeToString(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 71
    :goto_0
    iget-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment$1;->this$0:Lcom/android/settings/dndmode/AutoTimeSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->isAutoTimerOfQuietModeEnable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 72
    iget-object p0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment$1;->this$0:Lcom/android/settings/dndmode/AutoTimeSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/dndmode/DoNotDisturbModeUtils;->startAutoTime(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
