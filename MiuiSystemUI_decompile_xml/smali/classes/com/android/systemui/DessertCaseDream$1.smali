.class public final Lcom/android/systemui/DessertCaseDream$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/DessertCaseDream;


# direct methods
.method public constructor <init>(Lcom/android/systemui/DessertCaseDream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/DessertCaseDream$1;->this$0:Lcom/android/systemui/DessertCaseDream;

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
    iget-object p0, p0, Lcom/android/systemui/DessertCaseDream$1;->this$0:Lcom/android/systemui/DessertCaseDream;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/DessertCaseDream;->mView:Lcom/android/systemui/DessertCaseView;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->start()V

    .line 6
    return-void
    .line 9
.end method
