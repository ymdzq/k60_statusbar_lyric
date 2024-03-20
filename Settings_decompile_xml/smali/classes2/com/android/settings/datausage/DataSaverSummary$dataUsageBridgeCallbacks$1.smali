.class final Lcom/android/settings/datausage/DataSaverSummary$dataUsageBridgeCallbacks$1;
.super Ljava/lang/Object;
.source "DataSaverSummary.kt"

# interfaces
.implements Lcom/android/settings/applications/AppStateBaseBridge$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataSaverSummary;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataSaverSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataSaverSummary;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary$dataUsageBridgeCallbacks$1;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onExtraInfoUpdated()V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverSummary$dataUsageBridgeCallbacks$1;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {p0}, Lcom/android/settings/datausage/DataSaverSummary;->access$updateUnrestrictedAccessSummary(Lcom/android/settings/datausage/DataSaverSummary;)V

    return-void
.end method
