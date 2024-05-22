.class public final Lcom/android/systemui/flags/ServerFlagReaderImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final deviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/DeviceConfigProxy;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/flags/ServerFlagReaderImpl;->deviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 5
    new-instance p0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    return-void
    .line 12
.end method
