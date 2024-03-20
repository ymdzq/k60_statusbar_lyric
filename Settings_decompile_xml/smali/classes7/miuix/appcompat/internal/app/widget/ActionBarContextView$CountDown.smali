.class Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountDown"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown$CountDownCompleteListener;
    }
.end annotation


# instance fields
.field private mCount:I

.field private mCountDownCompleteListener:Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown$CountDownCompleteListener;


# direct methods
.method public constructor <init>(ILmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown$CountDownCompleteListener;)V
    .locals 0

    .line 943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 944
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;->mCount:I

    .line 945
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;->mCountDownCompleteListener:Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown$CountDownCompleteListener;

    return-void
.end method


# virtual methods
.method public countDown()V
    .locals 1

    .line 949
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;->mCount:I

    if-nez v0, :cond_0

    .line 951
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;->mCountDownCompleteListener:Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown$CountDownCompleteListener;

    invoke-interface {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown$CountDownCompleteListener;->onCountDownComplete()V

    :cond_0
    return-void
.end method
