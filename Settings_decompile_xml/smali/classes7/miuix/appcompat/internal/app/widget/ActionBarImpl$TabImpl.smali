.class public Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;
.super Landroidx/appcompat/app/ActionBar$Tab;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


# instance fields
.field private mCallback:Landroidx/appcompat/app/ActionBar$TabListener;

.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mInternalCallback:Landroidx/appcompat/app/ActionBar$TabListener;

.field private mPosition:I

.field private mText:Ljava/lang/CharSequence;

.field public mWithAnim:Z

.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V
    .locals 0

    .line 2091
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar$Tab;-><init>()V

    const/4 p1, -0x1

    .line 2105
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    const/4 p1, 0x1

    .line 2109
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mWithAnim:Z

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$TabListener;
    .locals 0

    .line 2091
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mInternalCallback:Landroidx/appcompat/app/ActionBar$TabListener;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$TabListener;
    .locals 0

    .line 2091
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mCallback:Landroidx/appcompat/app/ActionBar$TabListener;

    return-object p0
.end method


# virtual methods
.method public getCallback()Landroidx/appcompat/app/ActionBar$TabListener;
    .locals 0

    .line 2123
    invoke-static {}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$900()Landroidx/appcompat/app/ActionBar$TabListener;

    move-result-object p0

    return-object p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 2242
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 0

    .line 2139
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mCustomView:Landroid/view/View;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 2163
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getPosition()I
    .locals 0

    .line 2168
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    return p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 0

    .line 2177
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public select()V
    .locals 2

    .line 2218
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->selectTab(Landroidx/appcompat/app/ActionBar$Tab;Z)V

    return-void
.end method

.method public setInternalTabListener(Landroidx/appcompat/app/ActionBar$TabListener;)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 0

    .line 2133
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mInternalCallback:Landroidx/appcompat/app/ActionBar$TabListener;

    return-object p0
.end method

.method public setPosition(I)V
    .locals 0

    .line 2172
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 1

    .line 2200
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mText:Ljava/lang/CharSequence;

    .line 2202
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz p1, :cond_0

    .line 2203
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1000(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 2204
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 2205
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1200(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->updateTab(I)V

    .line 2206
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1200(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->updateTab(I)V

    :cond_0
    return-object p0
.end method
