.class Lmiuix/appcompat/internal/app/widget/ActionBarImpl$1;
.super Ljava/lang/Object;
.source "ActionBarImpl.java"

# interfaces
.implements Landroidx/appcompat/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroidx/appcompat/app/ActionBar$Tab;Landroidx/fragment/app/FragmentTransaction;)V
    .locals 1

    .line 123
    move-object p0, p1

    check-cast p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    .line 125
    invoke-static {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$TabListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$TabListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/app/ActionBar$TabListener;->onTabReselected(Landroidx/appcompat/app/ActionBar$Tab;Landroidx/fragment/app/FragmentTransaction;)V

    .line 129
    :cond_0
    invoke-static {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$TabListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 130
    invoke-static {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$TabListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/app/ActionBar$TabListener;->onTabReselected(Landroidx/appcompat/app/ActionBar$Tab;Landroidx/fragment/app/FragmentTransaction;)V

    :cond_1
    return-void
.end method

.method public onTabSelected(Landroidx/appcompat/app/ActionBar$Tab;Landroidx/fragment/app/FragmentTransaction;)V
    .locals 1

    .line 97
    move-object p0, p1

    check-cast p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    .line 99
    invoke-static {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$TabListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$TabListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/app/ActionBar$TabListener;->onTabSelected(Landroidx/appcompat/app/ActionBar$Tab;Landroidx/fragment/app/FragmentTransaction;)V

    .line 103
    :cond_0
    invoke-static {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$TabListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    invoke-static {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$TabListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/app/ActionBar$TabListener;->onTabSelected(Landroidx/appcompat/app/ActionBar$Tab;Landroidx/fragment/app/FragmentTransaction;)V

    :cond_1
    return-void
.end method

.method public onTabUnselected(Landroidx/appcompat/app/ActionBar$Tab;Landroidx/fragment/app/FragmentTransaction;)V
    .locals 1

    .line 110
    move-object p0, p1

    check-cast p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    .line 112
    invoke-static {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$TabListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$TabListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/app/ActionBar$TabListener;->onTabUnselected(Landroidx/appcompat/app/ActionBar$Tab;Landroidx/fragment/app/FragmentTransaction;)V

    .line 116
    :cond_0
    invoke-static {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$TabListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    invoke-static {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$TabListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/app/ActionBar$TabListener;->onTabUnselected(Landroidx/appcompat/app/ActionBar$Tab;Landroidx/fragment/app/FragmentTransaction;)V

    :cond_1
    return-void
.end method
