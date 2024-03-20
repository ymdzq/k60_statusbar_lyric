.class Lcom/android/settingslib/applications/ApplicationsState$1;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/applications/ApplicationsState;

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 738
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$1;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iput-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$1;->val$pkgName:Ljava/lang/String;

    iput p3, p0, Lcom/android/settingslib/applications/ApplicationsState$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 741
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$1;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$1;->val$pkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settingslib/applications/ApplicationsState$1;->val$userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState;->removePackage(Ljava/lang/String;I)V

    .line 742
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$1;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$1;->val$pkgName:Ljava/lang/String;

    iget p0, p0, Lcom/android/settingslib/applications/ApplicationsState$1;->val$userId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/settingslib/applications/ApplicationsState;->addPackage(Ljava/lang/String;I)V

    return-void
.end method
