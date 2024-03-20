.class Lcom/android/settings/SettingsFragment$9$4;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Lmiuix/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsFragment$9;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SettingsFragment$9;


# direct methods
.method public static synthetic $r8$lambda$VJAtUHjm2jotjfhSHfsK8Szs4d4(Lcom/android/settings/SettingsFragment$9$4;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/SettingsFragment$9$4;->lambda$onStop$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/SettingsFragment$9;)V
    .locals 0

    .line 906
    iput-object p1, p0, Lcom/android/settings/SettingsFragment$9$4;->this$1:Lcom/android/settings/SettingsFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onStop$0()V
    .locals 0

    .line 920
    iget-object p0, p0, Lcom/android/settings/SettingsFragment$9$4;->this$1:Lcom/android/settings/SettingsFragment$9;

    iget-object p0, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p0}, Lcom/android/settings/SettingsFragment;->-$$Nest$mstartSubIntentIfNeeded(Lcom/android/settings/SettingsFragment;)V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onStop(Z)V
    .locals 0

    .line 919
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$9$4;->this$1:Lcom/android/settings/SettingsFragment$9;

    iget-object p1, p1, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmIsActionModeDestroy(Lcom/android/settings/SettingsFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 920
    new-instance p1, Lcom/android/settings/SettingsFragment$9$4$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/SettingsFragment$9$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/SettingsFragment$9$4;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 921
    iget-object p0, p0, Lcom/android/settings/SettingsFragment$9$4;->this$1:Lcom/android/settings/SettingsFragment$9;

    iget-object p0, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fputmIsActionModeDestroy(Lcom/android/settings/SettingsFragment;Z)V

    :cond_0
    return-void
.end method

.method public onUpdate(ZF)V
    .locals 0

    .line 0
    return-void
.end method
