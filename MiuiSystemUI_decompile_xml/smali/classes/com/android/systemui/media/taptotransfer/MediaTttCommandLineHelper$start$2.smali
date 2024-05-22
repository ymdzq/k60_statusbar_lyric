.class final Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$start$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$start$2;->this$0:Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderCommand;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$start$2;->this$0:Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;

    .line 4
    const/4 v1, 0x1

    .line 6
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderCommand;-><init>(Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;I)V

    .line 7
    return-object v0
    .line 10
.end method
