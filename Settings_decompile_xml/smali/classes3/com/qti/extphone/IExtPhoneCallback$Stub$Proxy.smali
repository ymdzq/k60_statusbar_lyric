.class Lcom/qti/extphone/IExtPhoneCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IExtPhoneCallback.java"

# interfaces
.implements Lcom/qti/extphone/IExtPhoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/extphone/IExtPhoneCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1141
    iput-object p1, p0, Lcom/qti/extphone/IExtPhoneCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1145
    iget-object p0, p0, Lcom/qti/extphone/IExtPhoneCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
