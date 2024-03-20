.class Lcom/android/settings/dndmode/VipCallSettingsFragment$3;
.super Ljava/lang/Object;
.source "VipCallSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dndmode/VipCallSettingsFragment;->showVipListDeleteConfirmDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dndmode/VipCallSettingsFragment;

.field final synthetic val$deleteId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/dndmode/VipCallSettingsFragment;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment$3;->this$0:Lcom/android/settings/dndmode/VipCallSettingsFragment;

    iput-object p2, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment$3;->val$deleteId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 240
    iget-object p1, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment$3;->this$0:Lcom/android/settings/dndmode/VipCallSettingsFragment;

    iget-object p0, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment$3;->val$deleteId:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/android/settings/dndmode/VipCallSettingsFragment;->-$$Nest$mdeleteVipList(Lcom/android/settings/dndmode/VipCallSettingsFragment;Ljava/lang/String;)V

    return-void
.end method
