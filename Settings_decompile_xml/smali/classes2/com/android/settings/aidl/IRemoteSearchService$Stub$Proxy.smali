.class Lcom/android/settings/aidl/IRemoteSearchService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRemoteSearchService.java"

# interfaces
.implements Lcom/android/settings/aidl/IRemoteSearchService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/aidl/IRemoteSearchService$Stub;
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

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/android/settings/aidl/IRemoteSearchService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/settings/aidl/IRemoteSearchService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
