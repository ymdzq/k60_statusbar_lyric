.class Lcom/android/settings/haptic/HapticDemoPreference$2;
.super Ljava/lang/Object;
.source "HapticDemoPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/haptic/HapticDemoPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/haptic/HapticDemoPreference;


# direct methods
.method public static synthetic $r8$lambda$sPV5lAzEuO1H2lxQ8x1xghEDA0s(Lcom/android/settings/haptic/HapticDemoPreference$2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/haptic/HapticDemoPreference$2;->lambda$onClick$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/haptic/HapticDemoPreference;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/settings/haptic/HapticDemoPreference$2;->this$0:Lcom/android/settings/haptic/HapticDemoPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClick$0()V
    .locals 3

    .line 55
    const-class v0, Lcom/android/settings/haptic/HapticFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "haptic_interesting"

    invoke-static {v0, v1}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackPreferenceClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 58
    iget-object v1, p0, Lcom/android/settings/haptic/HapticDemoPreference$2;->this$0:Lcom/android/settings/haptic/HapticDemoPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/haptic/HapticInterestingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 59
    iget-object p0, p0, Lcom/android/settings/haptic/HapticDemoPreference$2;->this$0:Lcom/android/settings/haptic/HapticDemoPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 54
    new-instance v0, Lcom/android/settings/haptic/HapticDemoPreference$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/haptic/HapticDemoPreference$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/haptic/HapticDemoPreference$2;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method