.class public final Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider$FoldStateListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $listener:Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider$FoldStateListener$1;->$listener:Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider$FoldStateListener$1;->$listener:Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result p1

    .line 9
    invoke-interface {p0, p1}, Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;->onFoldUpdated(Z)V

    .line 10
    return-void
    .line 13
.end method
