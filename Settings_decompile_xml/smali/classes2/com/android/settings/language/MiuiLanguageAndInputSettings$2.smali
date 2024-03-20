.class Lcom/android/settings/language/MiuiLanguageAndInputSettings$2;
.super Ljava/lang/Object;
.source "MiuiLanguageAndInputSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/language/MiuiLanguageAndInputSettings;->updateHardKeyboards()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/language/MiuiLanguageAndInputSettings;

.field final synthetic val$identifier:Landroid/hardware/input/InputDeviceIdentifier;


# direct methods
.method constructor <init>(Lcom/android/settings/language/MiuiLanguageAndInputSettings;Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 956
    iput-object p1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$2;->this$0:Lcom/android/settings/language/MiuiLanguageAndInputSettings;

    iput-object p2, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$2;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 959
    iget-object p1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$2;->this$0:Lcom/android/settings/language/MiuiLanguageAndInputSettings;

    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$2;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-static {p1, p0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->-$$Nest$mshowKeyboardLayoutDialog(Lcom/android/settings/language/MiuiLanguageAndInputSettings;Landroid/hardware/input/InputDeviceIdentifier;)V

    const/4 p0, 0x1

    return p0
.end method
