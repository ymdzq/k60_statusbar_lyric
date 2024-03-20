.class Lcom/android/settings/inputmethod/CustomInputMethodPreference$2;
.super Ljava/lang/Object;
.source "CustomInputMethodPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/CustomInputMethodPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/CustomInputMethodPreference;

.field final synthetic val$enableMode:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/CustomInputMethodPreference;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 203
    iput-object p1, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference$2;->this$0:Lcom/android/settings/inputmethod/CustomInputMethodPreference;

    iput-object p2, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference$2;->val$enableMode:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 207
    iget-object p1, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference$2;->this$0:Lcom/android/settings/inputmethod/CustomInputMethodPreference;

    invoke-virtual {p1}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->CTSVerify()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object p1, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference$2;->this$0:Lcom/android/settings/inputmethod/CustomInputMethodPreference;

    invoke-virtual {p1}, Lcom/android/settingslib/PrimarySwitchPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 211
    iget-object p1, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference$2;->this$0:Lcom/android/settings/inputmethod/CustomInputMethodPreference;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->-$$Nest$msetCheckedInternal(Lcom/android/settings/inputmethod/CustomInputMethodPreference;Z)V

    .line 212
    iget-object p1, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference$2;->val$enableMode:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 213
    iget-object p0, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference$2;->this$0:Lcom/android/settings/inputmethod/CustomInputMethodPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->not_enabled:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    .line 218
    :cond_2
    iget-object p1, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference$2;->this$0:Lcom/android/settings/inputmethod/CustomInputMethodPreference;

    invoke-static {p1}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->-$$Nest$fgetmImi(Lcom/android/settings/inputmethod/CustomInputMethodPreference;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference$2;->this$0:Lcom/android/settings/inputmethod/CustomInputMethodPreference;

    invoke-static {p1}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->-$$Nest$fgetmImi(Lcom/android/settings/inputmethod/CustomInputMethodPreference;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p1

    .line 219
    invoke-static {p1}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->isMiuiInputMethod(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 235
    :cond_3
    iget-object p0, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference$2;->this$0:Lcom/android/settings/inputmethod/CustomInputMethodPreference;

    invoke-static {p0}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->-$$Nest$mshowSecurityWarnDialog(Lcom/android/settings/inputmethod/CustomInputMethodPreference;)V

    goto :goto_2

    .line 224
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference$2;->this$0:Lcom/android/settings/inputmethod/CustomInputMethodPreference;

    invoke-static {p1}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->-$$Nest$fgetmImi(Lcom/android/settings/inputmethod/CustomInputMethodPreference;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference$2;->this$0:Lcom/android/settings/inputmethod/CustomInputMethodPreference;

    invoke-static {p1}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->-$$Nest$misTv(Lcom/android/settings/inputmethod/CustomInputMethodPreference;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    .line 229
    :cond_5
    iget-object p1, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference$2;->this$0:Lcom/android/settings/inputmethod/CustomInputMethodPreference;

    invoke-static {p1}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->-$$Nest$misTv(Lcom/android/settings/inputmethod/CustomInputMethodPreference;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 230
    iget-object p0, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference$2;->this$0:Lcom/android/settings/inputmethod/CustomInputMethodPreference;

    invoke-static {p0}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->-$$Nest$mshowDirectBootWarnDialog(Lcom/android/settings/inputmethod/CustomInputMethodPreference;)V

    goto :goto_2

    .line 225
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference$2;->this$0:Lcom/android/settings/inputmethod/CustomInputMethodPreference;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->-$$Nest$msetCheckedInternal(Lcom/android/settings/inputmethod/CustomInputMethodPreference;Z)V

    .line 226
    iget-object p1, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference$2;->val$enableMode:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    .line 227
    iget-object p0, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference$2;->this$0:Lcom/android/settings/inputmethod/CustomInputMethodPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->enabled:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_2
    return-void
.end method
