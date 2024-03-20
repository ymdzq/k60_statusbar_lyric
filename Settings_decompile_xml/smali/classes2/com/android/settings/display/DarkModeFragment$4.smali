.class Lcom/android/settings/display/DarkModeFragment$4;
.super Ljava/lang/Object;
.source "DarkModeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/DarkModeFragment;->updateConfirmDialogListener(Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/DarkModeFragment;

.field final synthetic val$filterItemPreference:Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/display/DarkModeFragment;Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 473
    iput-object p1, p0, Lcom/android/settings/display/DarkModeFragment$4;->this$0:Lcom/android/settings/display/DarkModeFragment;

    iput-object p2, p0, Lcom/android/settings/display/DarkModeFragment$4;->val$filterItemPreference:Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 476
    iget-object p1, p0, Lcom/android/settings/display/DarkModeFragment$4;->val$filterItemPreference:Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 477
    iget-object p1, p0, Lcom/android/settings/display/DarkModeFragment$4;->this$0:Lcom/android/settings/display/DarkModeFragment;

    invoke-static {p1}, Lcom/android/settings/display/DarkModeFragment;->-$$Nest$fgetmDarkModeAppCacheManager(Lcom/android/settings/display/DarkModeFragment;)Lcom/android/settings/display/util/DarkModeAppCacheManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/display/DarkModeFragment$4;->val$filterItemPreference:Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/android/settings/display/util/DarkModeAppCacheManager;->setAppDarkMode(Ljava/lang/String;Z)V

    .line 478
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "filterItemPreference:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment$4;->val$filterItemPreference:Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "isCheck = false"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DarkModeFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object p0, p0, Lcom/android/settings/display/DarkModeFragment$4;->this$0:Lcom/android/settings/display/DarkModeFragment;

    invoke-static {p0}, Lcom/android/settings/display/DarkModeFragment;->-$$Nest$fgetmConfirmDialog(Lcom/android/settings/display/DarkModeFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method
