.class public final synthetic Lcom/android/settingslib/wifi/PasspointUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/wifi/PasspointUtils;

.field public final synthetic f$1:Ljava/util/Map;

.field public final synthetic f$2:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/wifi/PasspointUtils;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/wifi/PasspointUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/wifi/PasspointUtils;

    iput-object p2, p0, Lcom/android/settingslib/wifi/PasspointUtils$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/settingslib/wifi/PasspointUtils$$ExternalSyntheticLambda0;->f$2:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/settingslib/wifi/PasspointUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/wifi/PasspointUtils;

    iget-object v1, p0, Lcom/android/settingslib/wifi/PasspointUtils$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/settingslib/wifi/PasspointUtils$$ExternalSyntheticLambda0;->f$2:Ljava/util/Map;

    check-cast p1, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;

    invoke-static {v0, v1, p0, p1}, Lcom/android/settingslib/wifi/PasspointUtils;->$r8$lambda$7B8Ehm6xBLDBDGplR4E2hM2JXbs(Lcom/android/settingslib/wifi/PasspointUtils;Ljava/util/Map;Ljava/util/Map;Lcom/android/settingslib/wifi/PasspointR1WifiEntry;)V

    return-void
.end method
