.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$2;
.super Ljava/lang/Object;
.source "MiuiHeadsetFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->initSpatialAudioPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

.field final synthetic val$am:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroid/media/AudioManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1389
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$2;->val$am:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 1392
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    :try_start_0
    const-string v0, "android.media.Spatializer"

    .line 1394
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setEnabled"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 1395
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, p2

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1396
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$2;->val$am:Landroid/media/AudioManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getSpatializer"

    new-array v4, p2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1397
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v3}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmAbsAudioManager(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/media/AudioManager;

    move-result-object v3

    new-array v4, p2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetheadTrackingCheckBox(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1399
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetimmersionAudioCheckBox(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1401
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return p2
.end method
