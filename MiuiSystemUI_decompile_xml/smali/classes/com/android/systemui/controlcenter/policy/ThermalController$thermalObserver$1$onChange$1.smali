.class public final Lcom/android/systemui/controlcenter/policy/ThermalController$thermalObserver$1$onChange$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $newThermalValue:I

.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/ThermalController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/ThermalController;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/ThermalController$thermalObserver$1$onChange$1;->this$0:Lcom/android/systemui/controlcenter/policy/ThermalController;

    .line 2
    iput p2, p0, Lcom/android/systemui/controlcenter/policy/ThermalController$thermalObserver$1$onChange$1;->$newThermalValue:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/ThermalController$thermalObserver$1$onChange$1;->this$0:Lcom/android/systemui/controlcenter/policy/ThermalController;

    .line 2
    iget v1, p0, Lcom/android/systemui/controlcenter/policy/ThermalController$thermalObserver$1$onChange$1;->$newThermalValue:I

    .line 4
    iget v2, v0, Lcom/android/systemui/controlcenter/policy/ThermalController;->thermalValue:I

    .line 6
    if-ne v2, v1, :cond_0

    .line 8
    goto :goto_1

    .line 10
    :cond_0
    iput v1, v0, Lcom/android/systemui/controlcenter/policy/ThermalController;->thermalValue:I

    .line 11
    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/ThermalController;->listeners:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/systemui/controlcenter/policy/ThermalController$ThermalListener;

    .line 29
    invoke-interface {v1}, Lcom/android/systemui/controlcenter/policy/ThermalController$ThermalListener;->onThermalChanged()V

    .line 31
    goto :goto_0

    .line 34
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ThermalController$thermalObserver$1$onChange$1;->this$0:Lcom/android/systemui/controlcenter/policy/ThermalController;

    .line 35
    iget p0, p0, Lcom/android/systemui/controlcenter/policy/ThermalController;->thermalValue:I

    .line 37
    const-string/jumbo v0, "thermalValue changed: "

    .line 39
    const-string v1, "ThermalController"

    .line 42
    invoke-static {v0, p0, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 44
    return-void
    .line 47
.end method
