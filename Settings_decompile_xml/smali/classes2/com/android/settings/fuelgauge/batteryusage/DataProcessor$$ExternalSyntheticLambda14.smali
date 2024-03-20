.class public final synthetic Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda14;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda14;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda14;->f$2:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda14;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda14;->f$1:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda14;->f$2:Ljava/util/Map;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->$r8$lambda$8Nfxow7Vf17MZQVISG_XAnu-nQY(Ljava/util/List;Landroid/content/Context;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method
