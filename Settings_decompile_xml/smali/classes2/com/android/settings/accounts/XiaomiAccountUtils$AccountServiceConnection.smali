.class Lcom/android/settings/accounts/XiaomiAccountUtils$AccountServiceConnection;
.super Ljava/lang/Object;
.source "XiaomiAccountUtils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/XiaomiAccountUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountServiceConnection"
.end annotation


# instance fields
.field private mWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/accounts/XiaomiAccountUtils;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/accounts/XiaomiAccountUtils;)V
    .locals 1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/accounts/XiaomiAccountUtils$AccountServiceConnection;->mWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    .line 219
    iget-object p1, p0, Lcom/android/settings/accounts/XiaomiAccountUtils$AccountServiceConnection;->mWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 220
    iget-object p0, p0, Lcom/android/settings/accounts/XiaomiAccountUtils$AccountServiceConnection;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/accounts/XiaomiAccountUtils;

    const/4 p1, 0x0

    .line 221
    invoke-static {p0, p1}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$fputmMiAccountService(Lcom/android/settings/accounts/XiaomiAccountUtils;Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;)V

    const/4 p1, 0x0

    .line 222
    invoke-static {p0, p1}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$fputmIsServiceReg(Lcom/android/settings/accounts/XiaomiAccountUtils;Z)V

    .line 223
    invoke-static {}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onBindingDied: "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 194
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/accounts/XiaomiAccountUtils$AccountServiceConnection;->mWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 195
    iget-object p0, p0, Lcom/android/settings/accounts/XiaomiAccountUtils$AccountServiceConnection;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/accounts/XiaomiAccountUtils;

    .line 196
    invoke-static {p2}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$fputmMiAccountService(Lcom/android/settings/accounts/XiaomiAccountUtils;Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;)V

    .line 197
    invoke-static {}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "bindAccountService success"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {p0}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$fgetmXiaomiAccountHandler(Lcom/android/settings/accounts/XiaomiAccountUtils;)Lcom/android/settings/accounts/XiaomiAccountUtils$AccountServiceHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 199
    invoke-static {p0}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$fgetmXiaomiAccountHandler(Lcom/android/settings/accounts/XiaomiAccountUtils;)Lcom/android/settings/accounts/XiaomiAccountUtils$AccountServiceHandler;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    invoke-static {}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "fail getAccountService"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 209
    iget-object p1, p0, Lcom/android/settings/accounts/XiaomiAccountUtils$AccountServiceConnection;->mWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 210
    iget-object p0, p0, Lcom/android/settings/accounts/XiaomiAccountUtils$AccountServiceConnection;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/accounts/XiaomiAccountUtils;

    const/4 p1, 0x0

    .line 211
    invoke-static {p0, p1}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$fputmMiAccountService(Lcom/android/settings/accounts/XiaomiAccountUtils;Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;)V

    const/4 p1, 0x0

    .line 212
    invoke-static {p0, p1}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$fputmIsServiceReg(Lcom/android/settings/accounts/XiaomiAccountUtils;Z)V

    .line 213
    invoke-static {}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onServiceDisconnected: "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
