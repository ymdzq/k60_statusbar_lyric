.class public final Lcom/android/settings/datausage/DataSaverSummary$applicationsStateCallbacks$1;
.super Ljava/lang/Object;
.source "DataSaverSummary.kt"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataSaverSummary;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataSaverSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataSaverSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary$applicationsStateCallbacks$1;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllSizesComputed()V
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverSummary$applicationsStateCallbacks$1;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {p0}, Lcom/android/settings/datausage/DataSaverSummary;->access$updateUnrestrictedAccessSummary(Lcom/android/settings/datausage/DataSaverSummary;)V

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverSummary$applicationsStateCallbacks$1;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {p0}, Lcom/android/settings/datausage/DataSaverSummary;->access$updateUnrestrictedAccessSummary(Lcom/android/settings/datausage/DataSaverSummary;)V

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .line 0
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method
