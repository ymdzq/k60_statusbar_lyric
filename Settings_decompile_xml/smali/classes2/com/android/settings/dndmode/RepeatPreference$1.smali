.class Lcom/android/settings/dndmode/RepeatPreference$1;
.super Ljava/lang/Object;
.source "RepeatPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dndmode/RepeatPreference;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dndmode/RepeatPreference;

.field final synthetic val$repeatValue:[I


# direct methods
.method constructor <init>(Lcom/android/settings/dndmode/RepeatPreference;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/android/settings/dndmode/RepeatPreference$1;->this$0:Lcom/android/settings/dndmode/RepeatPreference;

    iput-object p2, p0, Lcom/android/settings/dndmode/RepeatPreference$1;->val$repeatValue:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/android/settings/dndmode/RepeatPreference$1;->val$repeatValue:[I

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    iget-object p0, p0, Lcom/android/settings/dndmode/RepeatPreference$1;->this$0:Lcom/android/settings/dndmode/RepeatPreference;

    invoke-static {p0}, Lcom/android/settings/dndmode/RepeatPreference;->-$$Nest$mshowMultiChoiceDialog(Lcom/android/settings/dndmode/RepeatPreference;)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object p2, p0, Lcom/android/settings/dndmode/RepeatPreference$1;->this$0:Lcom/android/settings/dndmode/RepeatPreference;

    invoke-static {p2}, Lcom/android/settings/dndmode/RepeatPreference;->-$$Nest$fgetmNewDaysOfWeek(Lcom/android/settings/dndmode/RepeatPreference;)Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    move-result-object p2

    new-instance v1, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    const/16 v2, 0x30

    invoke-direct {v1, v2}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;-><init>(I)V

    invoke-virtual {p2, v1}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->set(Lcom/android/settings/dndmode/Alarm$DaysOfWeek;)V

    .line 126
    iget-object p0, p0, Lcom/android/settings/dndmode/RepeatPreference$1;->this$0:Lcom/android/settings/dndmode/RepeatPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/RepeatPreference;->onDialogClosed(Z)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object p2, p0, Lcom/android/settings/dndmode/RepeatPreference$1;->this$0:Lcom/android/settings/dndmode/RepeatPreference;

    invoke-static {p2}, Lcom/android/settings/dndmode/RepeatPreference;->-$$Nest$fgetmNewDaysOfWeek(Lcom/android/settings/dndmode/RepeatPreference;)Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    move-result-object p2

    new-instance v1, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    const/16 v2, 0x4f

    invoke-direct {v1, v2}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;-><init>(I)V

    invoke-virtual {p2, v1}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->set(Lcom/android/settings/dndmode/Alarm$DaysOfWeek;)V

    .line 122
    iget-object p0, p0, Lcom/android/settings/dndmode/RepeatPreference$1;->this$0:Lcom/android/settings/dndmode/RepeatPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/RepeatPreference;->onDialogClosed(Z)V

    goto :goto_0

    .line 117
    :cond_3
    iget-object p2, p0, Lcom/android/settings/dndmode/RepeatPreference$1;->this$0:Lcom/android/settings/dndmode/RepeatPreference;

    invoke-static {p2}, Lcom/android/settings/dndmode/RepeatPreference;->-$$Nest$fgetmNewDaysOfWeek(Lcom/android/settings/dndmode/RepeatPreference;)Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    move-result-object p2

    new-instance v1, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    const/16 v2, 0x7f

    invoke-direct {v1, v2}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;-><init>(I)V

    invoke-virtual {p2, v1}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->set(Lcom/android/settings/dndmode/Alarm$DaysOfWeek;)V

    .line 118
    iget-object p0, p0, Lcom/android/settings/dndmode/RepeatPreference$1;->this$0:Lcom/android/settings/dndmode/RepeatPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/RepeatPreference;->onDialogClosed(Z)V

    .line 134
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
