.class public Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;
.super Ljava/lang/Object;
.source "ServerTimeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;
    }
.end annotation


# static fields
.field private static final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method public static getComputer()Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method
