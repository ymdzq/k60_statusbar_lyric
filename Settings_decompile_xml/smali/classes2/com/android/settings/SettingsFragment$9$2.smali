.class Lcom/android/settings/SettingsFragment$9$2;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/android/settings/SettingsFragment$9;)V
    .locals 0

    .line 878
    iput-object p1, p0, Lcom/android/settings/SettingsFragment$9$2;->this$1:Lcom/android/settings/SettingsFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 880
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$9$2;->this$1:Lcom/android/settings/SettingsFragment$9;

    iget-object p1, p1, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmMiuiCustSplitUtils(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/MiuiCustSplitUtils;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/SettingsFragment$9$2;->this$1:Lcom/android/settings/SettingsFragment$9;

    iget-object p1, p1, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmMiuiCustSplitUtils(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/MiuiCustSplitUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/MiuiCustSplitUtils;->reachSplitSize()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 881
    iget-object p0, p0, Lcom/android/settings/SettingsFragment$9$2;->this$1:Lcom/android/settings/SettingsFragment$9;

    iget-object p0, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p0}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmMiuiCustSplitUtils(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/MiuiCustSplitUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/MiuiCustSplitUtils;->finishAllSubActivities()V

    :cond_0
    return-void
.end method
