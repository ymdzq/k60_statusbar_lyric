.class Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver$1;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

.field final synthetic val$index:I

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1588
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    iput-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver$1;->val$pkgName:Ljava/lang/String;

    iput p3, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1591
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver$1;->val$pkgName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver$1;->val$index:I

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/settingslib/applications/ApplicationsState;->addPackage(Ljava/lang/String;I)V

    return-void
.end method
