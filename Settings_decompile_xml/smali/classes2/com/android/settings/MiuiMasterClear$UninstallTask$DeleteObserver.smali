.class Lcom/android/settings/MiuiMasterClear$UninstallTask$DeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "MiuiMasterClear.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiMasterClear$UninstallTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteObserver"
.end annotation


# instance fields
.field private mWaitor:Lcom/android/settings/MiuiMasterClear$UninstallTask$Waitor;

.field final synthetic this$1:Lcom/android/settings/MiuiMasterClear$UninstallTask;


# direct methods
.method public constructor <init>(Lcom/android/settings/MiuiMasterClear$UninstallTask;Lcom/android/settings/MiuiMasterClear$UninstallTask$Waitor;)V
    .locals 0

    .line 1312
    iput-object p1, p0, Lcom/android/settings/MiuiMasterClear$UninstallTask$DeleteObserver;->this$1:Lcom/android/settings/MiuiMasterClear$UninstallTask;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 1313
    iput-object p2, p0, Lcom/android/settings/MiuiMasterClear$UninstallTask$DeleteObserver;->mWaitor:Lcom/android/settings/MiuiMasterClear$UninstallTask$Waitor;

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 0

    .line 1326
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$UninstallTask$DeleteObserver;->mWaitor:Lcom/android/settings/MiuiMasterClear$UninstallTask$Waitor;

    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear$UninstallTask$Waitor;->finish()V

    return-void
.end method
