.class Lcom/android/settings/bluetooth/AuracastSourceController$2;
.super Ljava/lang/Object;
.source "AuracastSourceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/AuracastSourceController;->createDialogForBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/AuracastSourceController;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/AuracastSourceController;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/android/settings/bluetooth/AuracastSourceController$2;->this$0:Lcom/android/settings/bluetooth/AuracastSourceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 170
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastSourceController$2;->this$0:Lcom/android/settings/bluetooth/AuracastSourceController;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/AuracastSourceController;->-$$Nest$mupdateState(Lcom/android/settings/bluetooth/AuracastSourceController;Z)V

    .line 171
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastSourceController$2;->this$0:Lcom/android/settings/bluetooth/AuracastSourceController;

    invoke-static {p0}, Lcom/android/settings/bluetooth/AuracastSourceController;->-$$Nest$fgetmBapBroadcastProfile(Lcom/android/settings/bluetooth/AuracastSourceController;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->setBroadcastMode(Ljava/lang/Object;Z)Z

    return-void
.end method
