.class public final Lcom/android/systemui/shade/ShadeWindowLogger;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/log/ConstantStringsLogger;


# instance fields
.field public final synthetic $$delegate_0:Lcom/android/systemui/log/ConstantStringsLoggerImpl;

.field public final buffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shade/ShadeWindowLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 5
    new-instance v0, Lcom/android/systemui/log/ConstantStringsLoggerImpl;

    .line 7
    const-string/jumbo v1, "systemui.shadewindow"

    .line 9
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/log/ConstantStringsLoggerImpl;-><init>(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;)V

    .line 12
    iput-object v0, p0, Lcom/android/systemui/shade/ShadeWindowLogger;->$$delegate_0:Lcom/android/systemui/log/ConstantStringsLoggerImpl;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeWindowLogger;->$$delegate_0:Lcom/android/systemui/log/ConstantStringsLoggerImpl;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->d(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeWindowLogger;->$$delegate_0:Lcom/android/systemui/log/ConstantStringsLoggerImpl;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->e(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method

.method public final v(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeWindowLogger;->$$delegate_0:Lcom/android/systemui/log/ConstantStringsLoggerImpl;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->v(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method

.method public final w(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeWindowLogger;->$$delegate_0:Lcom/android/systemui/log/ConstantStringsLoggerImpl;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->w(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method
