.class public final synthetic Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Landroid/os/Parcel;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    invoke-static {p0, p1, p2}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->$r8$lambda$K5dQpS1NERtM4zXcYP_J5GbhoEU(Landroid/os/Parcel;Ljava/lang/String;Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;)V

    return-void
.end method
