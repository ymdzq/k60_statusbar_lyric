.class Lcom/android/settings/language/MiuiLanguageAndInputSettings$EnabledMechKeyboardObserver;
.super Landroid/database/ContentObserver;
.source "MiuiLanguageAndInputSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/language/MiuiLanguageAndInputSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnabledMechKeyboardObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/language/MiuiLanguageAndInputSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/language/MiuiLanguageAndInputSettings;Landroid/os/Handler;)V
    .locals 0

    .line 1110
    iput-object p1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$EnabledMechKeyboardObserver;->this$0:Lcom/android/settings/language/MiuiLanguageAndInputSettings;

    .line 1111
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 1116
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1117
    iget-object p1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$EnabledMechKeyboardObserver;->this$0:Lcom/android/settings/language/MiuiLanguageAndInputSettings;

    const-string/jumbo v0, "miui_mechanical_ime"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1119
    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$EnabledMechKeyboardObserver;->this$0:Lcom/android/settings/language/MiuiLanguageAndInputSettings;

    invoke-static {p0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->-$$Nest$fgetmContext(Lcom/android/settings/language/MiuiLanguageAndInputSettings;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->isMechKeyboardUsable(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method
