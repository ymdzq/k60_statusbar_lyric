.class public final Lcom/android/systemui/assist/AssistManager$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/assist/AssistManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/assist/AssistManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$4;->this$0:Lcom/android/systemui/assist/AssistManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$4;->this$0:Lcom/android/systemui/assist/AssistManager;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 4
    invoke-virtual {p0}, Lcom/android/internal/app/AssistUtils;->onLockscreenShown()V

    .line 6
    return-void
    .line 9
.end method
