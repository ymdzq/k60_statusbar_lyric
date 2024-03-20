.class Lcom/android/settings/KeyguardTimeoutListPreference$1;
.super Ljava/lang/Object;
.source "KeyguardTimeoutListPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/KeyguardTimeoutListPreference;->onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/KeyguardTimeoutListPreference;

.field final synthetic val$admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;


# direct methods
.method constructor <init>(Lcom/android/settings/KeyguardTimeoutListPreference;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/android/settings/KeyguardTimeoutListPreference$1;->this$0:Lcom/android/settings/KeyguardTimeoutListPreference;

    iput-object p2, p0, Lcom/android/settings/KeyguardTimeoutListPreference$1;->val$admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/android/settings/KeyguardTimeoutListPreference$1;->this$0:Lcom/android/settings/KeyguardTimeoutListPreference;

    invoke-static {p1}, Lcom/android/settings/KeyguardTimeoutListPreference;->-$$Nest$fgetmContext(Lcom/android/settings/KeyguardTimeoutListPreference;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/KeyguardTimeoutListPreference$1;->val$admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method
