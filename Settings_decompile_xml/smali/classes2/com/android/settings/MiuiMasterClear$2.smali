.class Lcom/android/settings/MiuiMasterClear$2;
.super Ljava/lang/Object;
.source "MiuiMasterClear.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiMasterClear;->formatSdCardAndFactoryReset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiMasterClear;

.field final synthetic val$storageManager:Landroid/os/storage/StorageManager;

.field final synthetic val$volId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiMasterClear;Landroid/os/storage/StorageManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 430
    iput-object p1, p0, Lcom/android/settings/MiuiMasterClear$2;->this$0:Lcom/android/settings/MiuiMasterClear;

    iput-object p2, p0, Lcom/android/settings/MiuiMasterClear$2;->val$storageManager:Landroid/os/storage/StorageManager;

    iput-object p3, p0, Lcom/android/settings/MiuiMasterClear$2;->val$volId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$2;->val$storageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear$2;->val$volId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->format(Ljava/lang/String;)V

    .line 434
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$2;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {p0}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$mstartFactoryReset(Lcom/android/settings/MiuiMasterClear;)V

    return-void
.end method
