.class public final synthetic Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settingslib/inputmethod/InputMethodPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/inputmethod/InputMethodPreference;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/inputmethod/InputMethodPreference;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 p2, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    goto :goto_0

    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/inputmethod/InputMethodPreference;

    .line 11
    iget-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 13
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 15
    move-result-object p1

    .line 18
    iget-boolean p1, p1, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    .line 19
    if-nez p1, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->isTv()Z

    .line 23
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->showDirectBootWarnDialog()V

    .line 29
    return-void

    .line 32
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settingslib/PrimarySwitchPreference;->setChecked(Z)V

    .line 33
    throw v1

    .line 36
    :pswitch_1
    iget-object p0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/inputmethod/InputMethodPreference;

    .line 37
    sget p1, Lcom/android/settingslib/inputmethod/InputMethodPreference;->$r8$clinit:I

    .line 39
    invoke-virtual {p0, p2}, Lcom/android/settingslib/PrimarySwitchPreference;->setChecked(Z)V

    .line 41
    throw v1

    .line 44
    :pswitch_2
    iget-object p0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/inputmethod/InputMethodPreference;

    .line 45
    sget p1, Lcom/android/settingslib/inputmethod/InputMethodPreference;->$r8$clinit:I

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/settingslib/PrimarySwitchPreference;->setChecked(Z)V

    .line 49
    throw v1

    .line 52
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/inputmethod/InputMethodPreference;

    .line 53
    sget p1, Lcom/android/settingslib/inputmethod/InputMethodPreference;->$r8$clinit:I

    .line 55
    invoke-virtual {p0, p2}, Lcom/android/settingslib/PrimarySwitchPreference;->setChecked(Z)V

    .line 57
    throw v1

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 62
.end method
