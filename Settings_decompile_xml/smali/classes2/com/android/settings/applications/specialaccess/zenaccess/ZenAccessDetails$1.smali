.class Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$1;
.super Ljava/lang/Object;
.source "ZenAccessDetails.java"

# interfaces
.implements Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$OnCheckResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->updatePreference(Landroid/content/Context;Landroidx/preference/SwitchPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$preference:Landroidx/preference/SwitchPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;Landroidx/preference/SwitchPreference;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$1;->this$0:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$1;->val$preference:Landroidx/preference/SwitchPreference;

    iput-object p3, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$1;->val$preference:Landroidx/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$1;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$1;->this$0:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;

    invoke-static {p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->access$000(Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->hasAccess(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
