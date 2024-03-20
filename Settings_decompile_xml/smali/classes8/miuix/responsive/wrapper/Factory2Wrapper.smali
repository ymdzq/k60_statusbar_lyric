.class public abstract Lmiuix/responsive/wrapper/Factory2Wrapper;
.super Ljava/lang/Object;
.source "Factory2Wrapper.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field private mOriginFactory2:Landroid/view/LayoutInflater$Factory2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 22
    iget-object p0, p0, Lmiuix/responsive/wrapper/Factory2Wrapper;->mOriginFactory2:Landroid/view/LayoutInflater$Factory2;

    if-eqz p0, :cond_0

    .line 23
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 32
    iget-object p0, p0, Lmiuix/responsive/wrapper/Factory2Wrapper;->mOriginFactory2:Landroid/view/LayoutInflater$Factory2;

    if-eqz p0, :cond_0

    .line 33
    invoke-interface {p0, p1, p2, p3}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public setOriginFactory2(Landroid/view/LayoutInflater$Factory2;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lmiuix/responsive/wrapper/Factory2Wrapper;->mOriginFactory2:Landroid/view/LayoutInflater$Factory2;

    return-void
.end method
