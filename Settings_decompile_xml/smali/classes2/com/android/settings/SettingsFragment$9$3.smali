.class Lcom/android/settings/SettingsFragment$9$3;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 888
    iput-object p1, p0, Lcom/android/settings/SettingsFragment$9$3;->this$1:Lcom/android/settings/SettingsFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    const/4 p3, 0x1

    if-ne p2, p1, :cond_0

    .line 892
    iget-object p0, p0, Lcom/android/settings/SettingsFragment$9$3;->this$1:Lcom/android/settings/SettingsFragment$9;

    iget-object p0, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p0}, Lcom/android/settings/SettingsFragment;->-$$Nest$mhideSoftKeyboard(Lcom/android/settings/SettingsFragment;)V

    return p3

    :cond_0
    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    .line 897
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$9$3;->this$1:Lcom/android/settings/SettingsFragment$9;

    iget-object p1, p1, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchHistoryText(Lcom/android/settings/SettingsFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/SettingsFragment;->-$$Nest$mprocessSearchHistory(Lcom/android/settings/SettingsFragment;Ljava/lang/String;)V

    .line 898
    iget-object p0, p0, Lcom/android/settings/SettingsFragment$9$3;->this$1:Lcom/android/settings/SettingsFragment$9;

    iget-object p0, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p0}, Lcom/android/settings/SettingsFragment;->-$$Nest$mhideSoftKeyboard(Lcom/android/settings/SettingsFragment;)V

    return p3

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
