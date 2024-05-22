.class public final synthetic Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/inputmethod/InputMethodPreference;

.field public final synthetic f$1:Landroid/widget/Switch;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/inputmethod/InputMethodPreference;Landroid/widget/Switch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda1;->f$0:Lcom/android/settingslib/inputmethod/InputMethodPreference;

    .line 5
    iput-object p2, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda1;->f$1:Landroid/widget/Switch;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda1;->f$0:Lcom/android/settingslib/inputmethod/InputMethodPreference;

    .line 2
    iget-object p0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda1;->f$1:Landroid/widget/Switch;

    .line 4
    sget v0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->$r8$clinit:I

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {p0}, Landroid/widget/Switch;->isEnabled()Z

    .line 11
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    goto :goto_1

    .line 17
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/Switch;

    .line 18
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    if-eqz v0, :cond_1

    .line 22
    iget-boolean v3, p1, Lcom/android/settingslib/PrimarySwitchPreference;->mChecked:Z

    .line 24
    if-eqz v3, :cond_1

    .line 26
    move v3, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v3, v1

    .line 30
    :goto_0
    xor-int/2addr v3, v2

    .line 31
    if-eqz v0, :cond_2

    .line 32
    iget-boolean v0, p1, Lcom/android/settingslib/PrimarySwitchPreference;->mChecked:Z

    .line 34
    if-eqz v0, :cond_2

    .line 36
    move v1, v2

    .line 38
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 39
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    move-result-object p0

    .line 45
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 46
    :goto_1
    return-void
    .line 49
.end method
