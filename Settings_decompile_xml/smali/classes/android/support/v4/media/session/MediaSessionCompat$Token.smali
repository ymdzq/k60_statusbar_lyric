.class public final Landroid/support/v4/media/session/MediaSessionCompat$Token;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Token"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/media/session/MediaSessionCompat$Token;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

.field private final mInner:Ljava/lang/Object;

.field private final mLock:Ljava/lang/Object;

.field private mSession2Token:Landroidx/versionedparcelable/VersionedParcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2144
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token$1;

    invoke-direct {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token$1;-><init>()V

    sput-object v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 1957
    invoke-direct {p0, p1, v0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Landroid/support/v4/media/session/IMediaSession;Landroidx/versionedparcelable/VersionedParcelable;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroid/support/v4/media/session/IMediaSession;)V
    .locals 1

    const/4 v0, 0x0

    .line 1961
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Landroid/support/v4/media/session/IMediaSession;Landroidx/versionedparcelable/VersionedParcelable;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroid/support/v4/media/session/IMediaSession;Landroidx/versionedparcelable/VersionedParcelable;)V
    .locals 1

    .line 1964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1948
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mLock:Ljava/lang/Object;

    .line 1965
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    .line 1966
    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    .line 1967
    iput-object p3, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mSession2Token:Landroidx/versionedparcelable/VersionedParcelable;

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2135
    :cond_0
    const-class v1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "android.support.v4.media.session.EXTRA_BINDER"

    .line 2137
    invoke-static {p0, v1}, Landroidx/core/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2136
    invoke-static {v1}, Landroid/support/v4/media/session/IMediaSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaSession;

    move-result-object v1

    const-string v2, "android.support.v4.media.session.SESSION_TOKEN2"

    .line 2138
    invoke-static {p0, v2}, Landroidx/versionedparcelable/ParcelUtils;->getVersionedParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v2

    const-string v3, "android.support.v4.media.session.TOKEN"

    .line 2140
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-nez p0, :cond_1

    goto :goto_0

    .line 2141
    :cond_1
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object p0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    invoke-direct {v0, p0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Landroid/support/v4/media/session/IMediaSession;Landroidx/versionedparcelable/VersionedParcelable;)V

    :goto_0
    return-object v0
.end method

.method public static fromToken(Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    const/4 v0, 0x0

    .line 1982
    invoke-static {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->fromToken(Ljava/lang/Object;Landroid/support/v4/media/session/IMediaSession;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object p0

    return-object p0
.end method

.method public static fromToken(Ljava/lang/Object;Landroid/support/v4/media/session/IMediaSession;)Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    if-eqz p0, :cond_1

    .line 2001
    instance-of v0, p0, Landroid/media/session/MediaSession$Token;

    if-eqz v0, :cond_0

    .line 2005
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Landroid/support/v4/media/session/IMediaSession;)V

    return-object v0

    .line 2002
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "token is not a valid MediaSession.Token object"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 2037
    :cond_0
    instance-of v1, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2041
    :cond_1
    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 2042
    iget-object p0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    if-nez p0, :cond_3

    .line 2043
    iget-object p0, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    .line 2045
    :cond_3
    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    if-nez p1, :cond_4

    return v2

    .line 2048
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getExtraBinder()Landroid/support/v4/media/session/IMediaSession;
    .locals 1

    .line 2069
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2070
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2071
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSession2Token()Landroidx/versionedparcelable/VersionedParcelable;
    .locals 1

    .line 2089
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2090
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mSession2Token:Landroidx/versionedparcelable/VersionedParcelable;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2091
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getToken()Ljava/lang/Object;
    .locals 0

    .line 2061
    iget-object p0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 2026
    iget-object p0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2029
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public setExtraBinder(Landroid/support/v4/media/session/IMediaSession;)V
    .locals 1

    .line 2079
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2080
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    .line 2081
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setSession2Token(Landroidx/versionedparcelable/VersionedParcelable;)V
    .locals 1

    .line 2099
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2100
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mSession2Token:Landroidx/versionedparcelable/VersionedParcelable;

    .line 2101
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 2109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.support.v4.media.session.TOKEN"

    .line 2110
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2111
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2112
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    if-eqz v2, :cond_0

    const-string v3, "android.support.v4.media.session.EXTRA_BINDER"

    .line 2113
    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v0, v3, v2}, Landroidx/core/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2115
    :cond_0
    iget-object p0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mSession2Token:Landroidx/versionedparcelable/VersionedParcelable;

    if-eqz p0, :cond_1

    const-string v2, "android.support.v4.media.session.SESSION_TOKEN2"

    .line 2116
    invoke-static {v0, v2, p0}, Landroidx/versionedparcelable/ParcelUtils;->putVersionedParcelable(Landroid/os/Bundle;Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 2118
    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 2018
    iget-object p0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    check-cast p0, Landroid/os/Parcelable;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
