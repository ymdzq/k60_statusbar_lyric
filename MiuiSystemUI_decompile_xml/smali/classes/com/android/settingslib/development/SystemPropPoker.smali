.class public final Lcom/android/settingslib/development/SystemPropPoker;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final sInstance:Lcom/android/settingslib/development/SystemPropPoker;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/settingslib/development/SystemPropPoker;

    .line 2
    invoke-direct {v0}, Lcom/android/settingslib/development/SystemPropPoker;-><init>()V

    .line 4
    sput-object v0, Lcom/android/settingslib/development/SystemPropPoker;->sInstance:Lcom/android/settingslib/development/SystemPropPoker;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public createPokerTask()Lcom/android/settingslib/development/SystemPropPoker$PokerTask;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/settingslib/development/SystemPropPoker$PokerTask;

    .line 2
    invoke-direct {p0}, Lcom/android/settingslib/development/SystemPropPoker$PokerTask;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method
