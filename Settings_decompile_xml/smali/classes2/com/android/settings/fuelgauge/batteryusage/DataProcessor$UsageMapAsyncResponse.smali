.class public interface abstract Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;
.super Ljava/lang/Object;
.source "DataProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UsageMapAsyncResponse"
.end annotation


# virtual methods
.method public abstract onBatteryCallbackDataLoaded(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;",
            ">;>;)V"
        }
    .end annotation
.end method
