.class Lcom/android/settings/soundsettings/RepeatPreferenceWithBg$3;
.super Ljava/lang/Object;
.source "RepeatPreferenceWithBg.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;


# direct methods
.method constructor <init>(Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg$3;->this$0:Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg$3;->this$0:Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;

    invoke-static {p0}, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->-$$Nest$fgetmNewDaysOfWeek(Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;)Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->set(IZ)V

    return-void
.end method
