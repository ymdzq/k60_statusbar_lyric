.class public abstract Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;
.super Landroid/content/ContentProvider;
.source "ContentProviderProxy.java"


# static fields
.field private static final NAME_INFIX:Ljava/lang/String; = "_Decorated_"


# instance fields
.field private providerInfo:Landroid/content/pm/ProviderInfo;

.field private realContentProvider:Landroid/content/ContentProvider;

.field private realContentProviderClassName:Ljava/lang/String;

.field private splitName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p0

    return-object p0

    .line 158
    :cond_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p0

    return-object p0
.end method

.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_Decorated_"

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 99
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProviderClassName:Ljava/lang/String;

    const/4 v1, 0x1

    .line 100
    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    .line 101
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 102
    new-instance p1, Landroid/content/pm/ProviderInfo;

    invoke-direct {p1, p2}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 103
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->getInstance()Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    move-result-object p1

    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->put(Ljava/lang/String;Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;)V

    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p0

    return p0

    .line 305
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 263
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->getRealContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 168
    :cond_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method protected abstract checkRealContentProviderInstallStatus(Ljava/lang/String;)Z
.end method

.method createAndActivateRealContentProvider(Ljava/lang/ClassLoader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProviderClassName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 74
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentProvider;

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    .line 75
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->providerInfo:Landroid/content/pm/ProviderInfo;

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    if-nez p0, :cond_0

    return-void

    .line 84
    :cond_0
    new-instance p1, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionException;

    invoke-direct {p1, p0}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 70
    :cond_1
    new-instance p1, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to read real content-provider for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getRealContentProvider()Landroid/content/ContentProvider;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    return-object p0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 272
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 108
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 109
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onLowMemory()V
    .locals 0

    .line 294
    invoke-super {p0}, Landroid/content/ContentProvider;->onLowMemory()V

    .line 295
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    if-eqz p0, :cond_0

    .line 296
    invoke-virtual {p0}, Landroid/content/ContentProvider;->onLowMemory()V

    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    .line 286
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->onTrimMemory(I)V

    .line 287
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    if-eqz p0, :cond_0

    .line 288
    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->onTrimMemory(I)V

    :cond_0
    return-void
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0

    .line 187
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0

    .line 197
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 226
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 236
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "TT;",
            "Landroid/content/ContentProvider$PipeDataWriter<",
            "TT;>;)",
            "Landroid/os/ParcelFileDescriptor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProvider;->openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 245
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/content/ContentProvider;->openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0

    .line 207
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0

    .line 217
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 130
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .line 117
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 8

    .line 137
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 140
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentProvider;->refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z

    move-result p0

    return p0

    .line 254
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z

    move-result p0

    return p0
.end method

.method public uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 178
    :cond_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
